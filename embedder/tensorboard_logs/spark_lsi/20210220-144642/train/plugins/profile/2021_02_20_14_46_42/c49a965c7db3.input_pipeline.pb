	???z?:A@???z?:A@!???z?:A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???z?:A@+~???>@1??yrM??A????U-??I?iӌ@*	 ?rh??]@2F
Iterator::Model???Xm???!8???JJ@)?L????1J ??#<@:Preprocessing2U
Iterator::Model::ParallelMapV2Ψ?*?؝?!(?K?8@)Ψ?*?؝?1(?K?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat'"????!?_?2?0@)a7l[?ِ?1??HX??+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?X32?]??!?N???0@)Y???"??1d`??@&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapĵ??^(??!ȆU?B?:@))%?????1g???#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef/?N{?!?????p@)f/?N{?1?????p@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?S??٬?!?)?a?G@)[?:???r?1[??Rt
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor2??%??n?!0&ݩ?	@)2??%??n?10&ݩ?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?=DYgX@QDxw?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	+~???>@+~???>@!+~???>@      ??!       "	??yrM????yrM??!??yrM??*      ??!       2	????U-??????U-??!????U-??:	?iӌ@?iӌ@!?iӌ@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?=DYgX@yDxw?@