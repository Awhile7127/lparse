local parser = {}


-- HANDLE PARSING COMMAND-LINE ARGUMENTS
function parser.parse_arguments(cli_args, args)

    -- ITERATE THROUGH PASSED CLI ARGUMENTS
    for i = 1, #cli_args, 1 do
        local current_passed_arg = cli_args[i]

        -- ITERATE THROUGH EXPECTED ARGUMENTS
        for expected_arg, _ in pairs(args) do

            -- COMPARE CLI TO EXPECTED ARGUMENT
            if (current_passed_arg == "--" .. expected_arg) or
            (current_passed_arg == "-" .. string.sub(expected_arg, 1, 1)) then
                args:add_argument(expected_arg, cli_args[i + 1])
            end
        end
    end
    return args
end


return parser
