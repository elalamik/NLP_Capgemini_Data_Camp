	??D@??D@!??D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??D@ۢ???B@1T?*?g???AÜ?M??I???H????*	?p=
?]@2U
Iterator::Model::ParallelMapV2?'?y???!???B?g@@)?'?y???1???B?g@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??{,G??!?B?M,N;@)??x?@e??1???d??7@:Preprocessing2F
Iterator::Model.???1???!??dn?I@)????p???1?D"3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???~??!??hv;Y@)???~??1??hv;Y@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??b??Ր?!<???*=,@)g`?eM,??1? y?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipI??Q,???!?U??H@)	4??yt?1?A{l,@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorSv?A]?p?!?@?G?@)Sv?A]?p?1?@?G?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??*P????! ??ۑ0@)pA?,_g?1??|?3?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?:Խ?X@Q??{????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ۢ???B@ۢ???B@!ۢ???B@      ??!       "	T?*?g???T?*?g???!T?*?g???*      ??!       2	Ü?M??Ü?M??!Ü?M??:	???H???????H????!???H????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?:Խ?X@y??{????