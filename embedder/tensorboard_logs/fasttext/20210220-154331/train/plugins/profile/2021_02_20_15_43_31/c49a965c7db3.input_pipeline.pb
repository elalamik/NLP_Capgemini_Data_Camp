	7??<@7??<@!7??<@	ك?[?n??ك?[?n??!ك?[?n??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails67??<@?\p+:@1?k?????A?????P??I?C?|???Y??^b,???*	sh??|7U@2U
Iterator::Model::ParallelMapV2I?[???!ex?YLA@)I?[???1ex?YLA@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ݓ??Z??!????'E6@)$D????1?(O*~2@:Preprocessing2F
Iterator::Model?3?Y????!v?z?FI@)P÷?n???1?P?Bs?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateX9??v??!?
?W?1@)I/j?? ?1%?պZ?!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice؀q??}?!?Q^??7!@)؀q??}?1?Q^??7!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??H?,|??!???	?H@)0?r.?u?1?x?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???$xCj?!0???8@)???$xCj?10???8@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?G?,??!F	*??4@)?6S!?g?1??'?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9؃?[?n??I1?4??@X@Q0WFl??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?\p+:@?\p+:@!?\p+:@      ??!       "	?k??????k?????!?k?????*      ??!       2	?????P???????P??!?????P??:	?C?|????C?|???!?C?|???B      ??!       J	??^b,?????^b,???!??^b,???R      ??!       Z	??^b,?????^b,???!??^b,???b      ??!       JGPUY؃?[?n??b q1?4??@X@y0WFl??