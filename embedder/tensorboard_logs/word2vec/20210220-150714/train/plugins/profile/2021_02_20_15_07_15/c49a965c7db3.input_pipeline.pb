	?!??T2?@?!??T2?@!?!??T2?@	?h?Q???h?Q??!?h?Q??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?!??T2?@ׅ?O?<@1E??2???A"??3?c??I?:ǀ????Y????k???*	K+??Y@2U
Iterator::Model::ParallelMapV2Y?e0F$??!?Ŧ??.A@)Y?e0F$??1?Ŧ??.A@:Preprocessing2F
Iterator::Model~V?)????!??ql-L@)I?f??6??11??B??5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat
???1Z??!r??nn6@)??cw????1????`?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??q?d???!??m??^@)??q?d???1??m??^@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=?බ???!|?ydi+@)?~?T??x?1bCaB?s@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????
??!Yy????E@)?-???=v?1X
C<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorzUg??s?!w?p7@)zUg??s?1w?p7@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?% ??*??!???vB0@)?}͑e?1g?%n@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?h?Q??I?D??? X@Q?dCK?=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ׅ?O?<@ׅ?O?<@!ׅ?O?<@      ??!       "	E??2???E??2???!E??2???*      ??!       2	"??3?c??"??3?c??!"??3?c??:	?:ǀ?????:ǀ????!?:ǀ????B      ??!       J	????k???????k???!????k???R      ??!       Z	????k???????k???!????k???b      ??!       JGPUY?h?Q??b q?D??? X@y?dCK?=@