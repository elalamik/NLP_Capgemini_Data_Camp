	?
?7?B@?
?7?B@!?
?7?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?
?7?B@2 {??cA@1?CmF???A?GnM?-??I???m?3??*	~?5^??S@2U
Iterator::Model::ParallelMapV2??^zo??!v?'?ּA@)??^zo??1v?'?ּA@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatG?j?????!6lF??8@)????fd??1vJ??Ps4@:Preprocessing2F
Iterator::Model?A???!h??U?I@)2V??W??1?C??U/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicek-?B;?y?!A4???  @)k-?B;?y?1A4???  @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?x@ٔ??!?zj??mH@)B\9{g?u?1??C?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?{G?	1??!/?????,@)???׺t?1ہ?8??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoro,(?4j?! Ko??X@)o,(?4j?1 Ko??X@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?p]1#??!????@?1@)??@??c?1c???{?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIx,%?w?X@Q????b??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	2 {??cA@2 {??cA@!2 {??cA@      ??!       "	?CmF????CmF???!?CmF???*      ??!       2	?GnM?-???GnM?-??!?GnM?-??:	???m?3?????m?3??!???m?3??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qx,%?w?X@y????b??