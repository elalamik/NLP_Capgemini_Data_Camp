	?Ljh`@@?Ljh`@@!?Ljh`@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Ljh`@@X??V??>@1@?P???Aq=
ףp??I%A?
???*	?C?l?c]@2U
Iterator::Model::ParallelMapV2??2?Pl??!??????A@)??2?Pl??1??????A@:Preprocessing2F
Iterator::Model,?p?{???!o?<?jO@)?ݮ????1???Y?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?b?????!?䥺?1@)ȗP????1??p?H,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice*??????!~?.̓?@)*??????1~?.̓?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?|?.PR??!????+@)?y??Q}?1#6?N?Z@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?F?q????!?h?8??B@)I?2???v?15???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>??ml?!?kw??@)>??ml?1?kw??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapG?q??>??!?R??"?/@)??)t^cg?1̯?H?m@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI.?i?O?X@Qrt?e???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	X??V??>@X??V??>@!X??V??>@      ??!       "	@?P???@?P???!@?P???*      ??!       2	q=
ףp??q=
ףp??!q=
ףp??:	%A?
???%A?
???!%A?
???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q.?i?O?X@yrt?e???