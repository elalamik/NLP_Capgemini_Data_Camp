	?H?s
?>@?H?s
?>@!?H?s
?>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?H?s
?>@?hV??<@1????????A??!p??I?_"?:???*	d;?O??W@2F
Iterator::ModelT;?Ԗ:??!_?"?I?H@)??D?Ɵ??1??^?\9@:Preprocessing2U
Iterator::Model::ParallelMapV2?A?f՗?!1-?k6G8@)?A?f՗?11-?k6G8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?%!????!>?ý&2@)?j,am???1F??G?.@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapĲ?CR??!㠖ֺ?;@)??8G??1?$.?|?'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatee?,?i???!??f?0@)?&S???1??"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceF?2??y?!?4?{?C@)F?2??y?1?4?{?C@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?tۨ?!??\?QI@)?@?شr?1??,@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??v?ӂg?!נ??@)??v?ӂg?1נ??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI"8?!??X@Ql???7???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?hV??<@?hV??<@!?hV??<@      ??!       "	????????????????!????????*      ??!       2	??!p????!p??!??!p??:	?_"?:????_"?:???!?_"?:???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q"8?!??X@yl???7???