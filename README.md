#PhpUnit + Google Protobuf  

This demonstrates a problem in Protobuf + PhpUnit integration, where
creating a mock of a Protobuf message causes segmentation fault.

To run, do
`docker build -t testprotos .`   
`docker run -it --rm testprotos`