	$}ZE ?@$}ZE ?@!$}ZE ?@	?
?A??@?
?A??@!?
?A??@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6$}ZE ?@T5A?}?<@11DN_?W??AB?S?[??I??D?`??Y??K?[g??*	?~j?t3W@2U
Iterator::Model::ParallelMapV2??w???!?Ud??@@)??w???1?Ud??@@:Preprocessing2F
Iterator::Model??\??X??! -F(??L@)???߽???1?@????7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?Y.????!@??5??4@)vq?-??1?*??n1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?r?}??x?!???a?>@)?r?}??x?1???a?>@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?4Lkӈ?!?^4?*@)4?%?x?1?.:? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?r??+??!?ҹ?9E@)??BBu?1힝S?^@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?A?p?-n?!?źA??@)?A?p?-n?1?źA??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ՏM?#??!?uE?_?/@)??BBe?1힝S?^@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?
?A??@I9"???W@Q?UZ(?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	T5A?}?<@T5A?}?<@!T5A?}?<@      ??!       "	1DN_?W??1DN_?W??!1DN_?W??*      ??!       2	B?S?[??B?S?[??!B?S?[??:	??D?`????D?`??!??D?`??B      ??!       J	??K?[g????K?[g??!??K?[g??R      ??!       Z	??K?[g????K?[g??!??K?[g??b      ??!       JGPUY?
?A??@b q9"???W@y?UZ(?@