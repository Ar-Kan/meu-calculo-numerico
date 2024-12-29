-- This Lua script defines a table of functions to be used with Pandoc for processing elements in a document.
-- The functions are designed to handle specific types of elements and apply custom styles to them.

-- The first function handles elements of type "Quoted". If any of the content within the quoted element is of type "Math",
-- it wraps the entire quoted element in a Pandoc Span with an inline-block display style.

-- The second function processes paragraphs ("Para"). It iterates through the content of the paragraph and looks for elements of type "Math".
-- If a "Math" element is found, it checks the surrounding elements. If the next element is a string ("Str"), it combines the "Math" element
-- and the string into a single Span with an inline-block display style. This ensures that mathematical expressions are displayed inline
-- with the surrounding text.
return {
    { Quoted = function(elem)
        for _, el in ipairs(elem.content) do
            if el.t == "Math" then
                return pandoc.Span(elem, { style = "display:inline-block;" })
            end
        end
        return elem
    end },
    { Para = function(elem)
        -- quarto.log.output(elem)
        content = elem.content
        for i, el in ipairs(content) do
            if el.t == "Math" then
                if i > 1 then
                    -- prev = content[i-1] -- not sure previous string element should be append ...
                    -- if prev.t == "Str" then
                    --   current_elem = {prev, el}
                    --   table.remove(content, i-1)
                    -- else
                    current_elem = { el }
                    -- end
                    if i < #content then
                        next = content[i + 1]
                        if next.t == "Str" then
                            table.insert(current_elem, next)
                            table.remove(content, i + 1)
                        end
                    end
                    content[i] = pandoc.Span(current_elem, { style = "display:inline-block;" })
                end
            end
        end
        return pandoc.Para(content)
    end }
}