	f???;@f???;@!f???;@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-f???;@????8@1?Y?rL??AqU?wE???I{??Bq??*	?t?NT@2U
Iterator::Model::ParallelMapV2{K9_콘?!?`vY˿=@){K9_콘?1?`vY˿=@:Preprocessing2F
Iterator::Model?;l"3??!?v4T?L@)?+??yp??14?u?.<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatp?N\?W??!?dZ;?3@)?uʣ??1><ȳ??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)??Rbw?!??G??@))??Rbw?1??G??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenater???b??!?*????*@)?????cu?1\_Ƹַ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?q4GV~??!p??˫E@)??"[As?15ˎ??&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??"ڎ???!??+L^?0@)??$xCe?1??@c?_	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?fI-d?!?D?1?B@)?fI-d?1?D?1?B@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIN?ju?X@Ql[????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????8@????8@!????8@      ??!       "	?Y?rL???Y?rL??!?Y?rL??*      ??!       2	qU?wE???qU?wE???!qU?wE???:	{??Bq??{??Bq??!{??Bq??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qN?ju?X@yl[????