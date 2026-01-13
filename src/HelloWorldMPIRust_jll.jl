# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloWorldMPIRust_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloWorldMPIRust")
JLLWrappers.@generate_main_file("HelloWorldMPIRust", Base.UUID("6a3fff67-2709-5d5a-a5f2-388c3422b2ea"))
end  # module HelloWorldMPIRust_jll
