	????n>@????n>@!????n>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-????n>@F(???q<@1??g͏???A???ʦ??IO??C]??*	-????Q@2U
Iterator::Model::ParallelMapV2p????M??!eU??$@@)p????M??1eU??$@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatod????!????CC8@)ԁ??V_??17????W4@:Preprocessing2F
Iterator::ModelڒUn2??!Ba??4I@)???7?-??1?u??!2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateq!??Fʆ?!ơ?ٹ?/@)?u8?Jww?1MVNɱ@ @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceO??Cv?!??J!?@)O??Cv?1??J!?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip:?w????!????H@)??F???r?1qkY???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor\qqTn?f?!LEG??Z@)\qqTn?f?1LEG??Z@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[rP?L??!??@w?2@)?????	b?1?.0???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI-y?L??X@Qݴ??????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	F(???q<@F(???q<@!F(???q<@      ??!       "	??g͏?????g͏???!??g͏???*      ??!       2	???ʦ?????ʦ??!???ʦ??:	O??C]??O??C]??!O??C]??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q-y?L??X@yݴ??????