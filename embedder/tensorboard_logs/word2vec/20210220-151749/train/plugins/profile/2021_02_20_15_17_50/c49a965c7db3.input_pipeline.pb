	?@?w?iA@?@?w?iA@!?@?w?iA@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?@?w?iA@??C?lO?@1??8????A??-@۪?Ib?o@*	"?rh??Z@2U
Iterator::Model::ParallelMapV2D?K?Kơ?!??Ю\@@)D?K?Kơ?1??Ю\@@:Preprocessing2F
Iterator::Model??b????!T6P?JK@)???r۾??1?Q????5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatD? ???! mB?7@)???r???1?4?t?3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???Xm??!x?[?s@)???Xm??1x?[?s@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??66;R??!"????*@)r??	?z?1???#??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???O???!????n?F@)R?b??v?1_Qxd??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor"??T2 t?!?-?6Ki@)"??T2 t?1?-?6Ki@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!?~BD׏0@)r??	?j?1???#??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?^`q?}X@Q?!??1@ @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??C?lO?@??C?lO?@!??C?lO?@      ??!       "	??8??????8????!??8????*      ??!       2	??-@۪???-@۪?!??-@۪?:	b?o@b?o@!b?o@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?^`q?}X@y?!??1@ @