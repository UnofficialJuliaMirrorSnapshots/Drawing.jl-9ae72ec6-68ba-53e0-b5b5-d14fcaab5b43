
@test_throws DrawingError draw() do 
    with() do
    end
end
@test isnull(Drawing.thread_context.context)

@test_throws ErrorException draw(Paper("foo")) do
end
@test isnull(Drawing.thread_context.context)

# todo - test output but no paper
# todo - test paper but no output
# todo - test state no output or paper
# todo - test multiple paper
# todo - test multiple output

println("errors: ok")
