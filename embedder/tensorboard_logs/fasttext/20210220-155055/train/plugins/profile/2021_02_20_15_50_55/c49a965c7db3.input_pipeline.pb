	f??t???@f??t???@!f??t???@	?|λ????|λ???!?|λ???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6f??t???@?%Tpx?=@1??????A????l??II?????Y???????*	S㥛Ĩ\@2U
Iterator::Model::ParallelMapV2v??fG???!?'???:@)v??fG???1?'???:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatI? OZ??!9.??i?;@)S?'?ݚ?1m?????6@:Preprocessing2F
Iterator::Model??2????!9N?/h?G@)dϞ??$??1?t??I?4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???3??!?<:??/@)h?
?O??1?@X #@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??R%ʮ?!Ǳ#З:J@)?C???}?1??Q?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???3.|?!??	?@)???3.|?1??	?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?M?g\w?!,???:?@)?M?g\w?1,???:?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????????!??Ǆ?g2@)?t?? ?k?1W?T??5@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?|λ???I?)??X?X@Q?f
r???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?%Tpx?=@?%Tpx?=@!?%Tpx?=@      ??!       "	????????????!??????*      ??!       2	????l??????l??!????l??:	I?????I?????!I?????B      ??!       J	??????????????!???????R      ??!       Z	??????????????!???????b      ??!       JGPUY?|λ???b q?)??X?X@y?f
r???