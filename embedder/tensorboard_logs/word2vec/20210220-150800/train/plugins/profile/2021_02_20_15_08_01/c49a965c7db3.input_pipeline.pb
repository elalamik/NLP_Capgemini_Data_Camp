	\?	?@@\?	?@@!\?	?@@	'\???f??'\???f??!'\???f??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6\?	?@@?FZ*o?=@1? @?????Ac&Q/?4??I?L?????Y?Y?$???*	ˡE??UX@2U
Iterator::Model::ParallelMapV2???A?p??!>?T"~@@)???A?p??1>?T"~@@:Preprocessing2F
Iterator::Model????&M??!&샳?cK@)m??p???1??ݽ?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??/?x???!
y?W?5@)???XǑ?1MA~???1@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip'f?ʉ??!?|L[?F@)?h????~?1?m???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceg??I}Yz?!??G2o@)g??I}Yz?1??G2o@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?"0?70??!T?%??D)@)T??b?x?1??v??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??OIo?!??Q??b@)??OIo?1??Q??b@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap? ?6qr??!Hx?<Y?/@)yxρ?i?1Γ
6?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9'\???f??I? ??:BX@Q?ϴ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?FZ*o?=@?FZ*o?=@!?FZ*o?=@      ??!       "	? @?????? @?????!? @?????*      ??!       2	c&Q/?4??c&Q/?4??!c&Q/?4??:	?L??????L?????!?L?????B      ??!       J	?Y?$????Y?$???!?Y?$???R      ??!       Z	?Y?$????Y?$???!?Y?$???b      ??!       JGPUY'\???f??b q? ??:BX@y?ϴ?@