	?b????@?b????@!?b????@	????%??????%??!????%??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?b????@C=}??<@1?Ü????A?O?D???I?FN????Y??Kǜg??*	gffff.W@2U
Iterator::Model::ParallelMapV2??{?ʄ??!?=ԁ??@@)??{?ʄ??1?=ԁ??@@:Preprocessing2F
Iterator::Model??֪]??!f?"'=?L@)r7?֊6??1???J?r8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat"???/??!D? ?]7@)?/?$??10<x???1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????y7??!K???e'@)????Sv?1.4?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???'*v?!zN?? H@)???'*v?1zN?? H@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor
?????t?!R?9?@)
?????t?1R?9?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zips	????!?k???-E@)%?s}r?1?N?(?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?*2: 	??!???3y,@)??A?Fc?1? ?M@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????%??IMy??X@QeshPk@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	C=}??<@C=}??<@!C=}??<@      ??!       "	?Ü?????Ü????!?Ü????*      ??!       2	?O?D????O?D???!?O?D???:	?FN?????FN????!?FN????B      ??!       J	??Kǜg????Kǜg??!??Kǜg??R      ??!       Z	??Kǜg????Kǜg??!??Kǜg??b      ??!       JGPUY????%??b qMy??X@yeshPk@