	?M?¥C@?M?¥C@!?M?¥C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?M?¥C@?B=}TB@1<K?Pa??Ai??I??I??Rx?,??*	_?I`@2U
Iterator::Model::ParallelMapV2eM.????!???Z??<@)eM.????1???Z??<@:Preprocessing2F
Iterator::Model??҇.???!(??xpH@)?Z??Ι?1iv????3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??h>???!?d??}?7@)?????Õ?1H>??0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??^)??!A?`??4@)0b? ????1???gm0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice'/2?F??!?yA??@)'/2?F??1?yA??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?kЗ????!?NG???I@)a??+ey?1?}
;?W@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???uR_v?!????"
@)???uR_v?1????"
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?fh<??!(???LA:@)[?? ??l?1I?*?y?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?{???X@Q?<a???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?B=}TB@?B=}TB@!?B=}TB@      ??!       "	<K?Pa??<K?Pa??!<K?Pa??*      ??!       2	i??I??i??I??!i??I??:	??Rx?,????Rx?,??!??Rx?,??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?{???X@y?<a???