	?R?h?8@?R?h?8@!?R?h?8@	#*???O??#*???O??!#*???O??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?R?h?8@???-??6@1e ???-??A?I(}!???I?B?????Y???O???*	????x!U@2U
Iterator::Model::ParallelMapV2T??b???!?㕍??;@)T??b???1?㕍??;@:Preprocessing2F
Iterator::Model??W????!CPtw??H@)ș&l???1??Ra?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat#K?Xޕ?!?f?9D9@)?8~?4??1?zϻ?5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_?"??]??!'?-#c0@)??~??@?1My??"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?O??0{y?!vj?p@)?O??0{y?1vj?p@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip s-Z????!????/I@)????mr?1+???J@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???@?Mm?!???C??@)???@?Mm?1???C??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?M?E???!B?a=??3@))H4?"f?1?S|??	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9#*???O??I@?@?YKX@Q?m???? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???-??6@???-??6@!???-??6@      ??!       "	e ???-??e ???-??!e ???-??*      ??!       2	?I(}!????I(}!???!?I(}!???:	?B??????B?????!?B?????B      ??!       J	???O??????O???!???O???R      ??!       Z	???O??????O???!???O???b      ??!       JGPUY#*???O??b q@?@?YKX@y?m???? @