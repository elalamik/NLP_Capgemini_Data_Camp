	~r 
?@@~r 
?@@!~r 
?@@	"]iq??"]iq??!"]iq??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6~r 
?@@K?b??b>@1*??D???A?)H??I??	???Y%?????*	???SSX@2U
Iterator::Model::ParallelMapV2Ic???&??!	S?,?5@@)Ic???&??1	S?,?5@@:Preprocessing2F
Iterator::Model4`?_???!?
re?YL@)?WWj1??1?o?q?G8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?t??.???!??Axn?4@)Y?.????1F???1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateߌ??????!?x??-@){?"0?7??1?l???F @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?^??x?z?!?f<X?@)?^??x?z?1?f<X?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipL?K?1???!???L?E@)?@fg?;u?1?CZ??O@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorF?Sweg?!MǩE{@)F?Sweg?1MǩE{@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?M+?@.??!??C?C>1@)?8?j?3c?1z?9 ?E@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9"]iq??I?ЮF[X@Q(?x(?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	K?b??b>@K?b??b>@!K?b??b>@      ??!       "	*??D???*??D???!*??D???*      ??!       2	?)H???)H??!?)H??:	??	?????	???!??	???B      ??!       J	%?????%?????!%?????R      ??!       Z	%?????%?????!%?????b      ??!       JGPUY"]iq??b q?ЮF[X@y(?x(?@