	E?>?_?@E?>?_?@!E?>?_?@	IN%~)???IN%~)???!IN%~)???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6E?>?_?@?!?
?<@1C?????AR*?	????Iϼv߱??Y/?e?????*	n???IW@2U
Iterator::Model::ParallelMapV2,I???p??!?6?t<A@),I???p??1?6?t<A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat ?Ȓ9???!?? ?8@)??]Pߒ?1[?S,??3@:Preprocessing2F
Iterator::Model4??yT???!???@+%I@)!<?8b-??1d?&٢/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateL?^I???!?????X.@)?????1?[8'a @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?*???z?!?D??@)?*???z?1?D??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipF?7?k???!(!???H@)??À%w?1?Ō??C@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?}?֤?r?!ez?:?@)?}?֤?r?1ez?:?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?)?J=??!? ???2@)????Đl?1헭aI?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9IN%~)???I??W.?HX@Q?Dw??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?!?
?<@?!?
?<@!?!?
?<@      ??!       "	C?????C?????!C?????*      ??!       2	R*?	????R*?	????!R*?	????:	ϼv߱??ϼv߱??!ϼv߱??B      ??!       J	/?e?????/?e?????!/?e?????R      ??!       Z	/?e?????/?e?????!/?e?????b      ??!       JGPUYIN%~)???b q??W.?HX@y?Dw??@