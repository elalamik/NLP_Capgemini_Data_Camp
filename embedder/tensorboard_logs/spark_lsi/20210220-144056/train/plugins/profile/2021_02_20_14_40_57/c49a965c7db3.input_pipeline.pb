	?:?p?@@?:?p?@@!?:?p?@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?:?p?@@{L?4?7=@1?Ss?????A???@?M??I?(B?v? @*	?A`?ЂV@2U
Iterator::Model::ParallelMapV2h$B#ظ??!??w?ݨ@@)h$B#ظ??1??w?ݨ@@:Preprocessing2F
Iterator::Model??g????!????E?K@)|G?	1???1zpb?T6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?C5%Y???!??w??-5@)kIG9?M??1B?Um?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatey??"????!v?L?g?-@)J}Yک?|?1?T%V'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???jdWz?!L ?1y?@)???jdWz?1L ?1y?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?6??:r??!VUP?,F@)?wak??r?1?>?Ɍ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor ?o_?i?!?C?R?@) ?o_?i?1?C?R?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????n???!3	??D2@)?uX?f?1?_?_??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIh??Օ_X@Q?r?OE@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	{L?4?7=@{L?4?7=@!{L?4?7=@      ??!       "	?Ss??????Ss?????!?Ss?????*      ??!       2	???@?M?????@?M??!???@?M??:	?(B?v? @?(B?v? @!?(B?v? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qh??Օ_X@y?r?OE@