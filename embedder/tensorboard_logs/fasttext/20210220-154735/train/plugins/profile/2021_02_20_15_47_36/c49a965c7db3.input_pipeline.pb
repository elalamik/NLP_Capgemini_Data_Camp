	>"?D?<@>"?D?<@!>"?D?<@	?v??C????v??C???!?v??C???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6>"?D?<@?f???:@1?y??Q??A?8?Z????I;s	?;??YX;?s?ѵ?*	)\???8U@2U
Iterator::Model::ParallelMapV2??Bt??!'WƷ?<@)??Bt??1'WƷ?<@:Preprocessing2F
Iterator::Model???G????!??eJK@)E?J???1??s?r99@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatZJ??P???!??k???5@)?Dh׏?1{??uP2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateۉ??Hۈ?!?i;?,@)S?1?#y?1[:	??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicecb?qm?x?!????]@)cb?qm?x?1????]@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?H?s
???!~????F@)j?????u?1#m?3@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?@?vh?!˺}?#@)?@?vh?1˺}?#@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????ߎ?!??mV?1@)	?L?nh?1?T?E?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?v??C???IQ-?3?{X@Q?͐)?X??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?f???:@?f???:@!?f???:@      ??!       "	?y??Q???y??Q??!?y??Q??*      ??!       2	?8?Z?????8?Z????!?8?Z????:	;s	?;??;s	?;??!;s	?;??B      ??!       J	X;?s?ѵ?X;?s?ѵ?!X;?s?ѵ?R      ??!       Z	X;?s?ѵ?X;?s?ѵ?!X;?s?ѵ?b      ??!       JGPUY?v??C???b qQ-?3?{X@y?͐)?X??