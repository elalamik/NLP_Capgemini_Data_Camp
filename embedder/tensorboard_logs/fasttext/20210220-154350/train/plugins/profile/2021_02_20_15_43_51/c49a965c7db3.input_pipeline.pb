	ӽN???@ӽN???@!ӽN???@	K|q?jj??K|q?jj??!K|q?jj??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ӽN???@,?`p?E<@1???3??A?3????I??^
??Y?9?ؗl??*	^?I#^@2U
Iterator::Model::ParallelMapV2ca??????!?Π?9@)ca??????1?Π?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??_#I??!J
8?Z8@)Ǽ?8d??1?t?|rC4@:Preprocessing2F
Iterator::Model7?~T??!?
?x?#F@)
ףp=
??1??"8?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateg??I}Y??!/??|?X5@)??????1???[(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?e??a???!Rj?EU"@)?e??a???1Rj?EU"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipXuV?1??!4?s??K@)???>9
??1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorIC??3t?!VJ??]@)IC??3t?1VJ??]@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapW]?jJ???!*??8@)????4cq?1fϬ??+@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J|q?jj??I4??]?SX@Q
<??s@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	,?`p?E<@,?`p?E<@!,?`p?E<@      ??!       "	???3?????3??!???3??*      ??!       2	?3?????3????!?3????:	??^
????^
??!??^
??B      ??!       J	?9?ؗl???9?ؗl??!?9?ؗl??R      ??!       Z	?9?ؗl???9?ؗl??!?9?ؗl??b      ??!       JGPUYJ|q?jj??b q4??]?SX@y
<??s@