	*??ŷ6@*??ŷ6@!*??ŷ6@	?4M?????4M????!?4M????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6*??ŷ6@???4@1@ٔ+????A?[??????IzUg?????YO???N???*	+?a]@2U
Iterator::Model::ParallelMapV2?E???Ԡ?!&??]??;@)?E???Ԡ?1&??]??;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????j??!???[?H;@)????M??1+h?4J?6@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??x>???!?uϱ??8@)W#??2??1?C?(?>.@:Preprocessing2F
Iterator::Model1?q?	ۧ?!%%~???C@);???.??1FCJ?X'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??an??!???:?x#@)??an??1???:?x#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?b?D(??!?ځ>-N@)?
F%uz?1a?*(?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??_vOv?!?Vr?\a@)??_vOv?1?Vr?\a@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapF@?#H???!??]9?;@)???Dhk?1?Mq$?s@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?4M????I?̀?X3X@Q?D?\b?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???4@???4@!???4@      ??!       "	@ٔ+????@ٔ+????!@ٔ+????*      ??!       2	?[???????[??????!?[??????:	zUg?????zUg?????!zUg?????B      ??!       J	O???N???O???N???!O???N???R      ??!       Z	O???N???O???N???!O???N???b      ??!       JGPUY?4M????b q?̀?X3X@y?D?\b?@