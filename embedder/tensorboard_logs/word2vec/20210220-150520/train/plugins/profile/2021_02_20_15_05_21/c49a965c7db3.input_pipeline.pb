	?vhX?@@?vhX?@@!?vhX?@@	?
T?????
T????!?
T????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?vhX?@@B]¡?=@1sK?!q???A?p=
ף??II*S?A??Y*?:]???*	??/??W@2U
Iterator::Model::ParallelMapV2?
E??S??!?~0?@@)?
E??S??1?~0?@@:Preprocessing2F
Iterator::Modelu?BY???!??X?ܗK@)xԘsI??1i??Y?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatXr????!??hy?6@)-??m??1?@}???2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateNd??Ǌ?!?ɊT?e+@)o??ܚt{?1?v?y?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice,=)?z?!?+/??@),=)?z?1?+/??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?<,Ԛ???!t?	#hF@)Ϡ???u?1EW???
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorW!?'?>m?!?,???@)W!?'?>m?1?,???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Z}uU??!?~???0@)Zd;?O?g?1?̰-?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?
T????I?*???cX@Q?_eŪ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B]¡?=@B]¡?=@!B]¡?=@      ??!       "	sK?!q???sK?!q???!sK?!q???*      ??!       2	?p=
ף???p=
ף??!?p=
ף??:	I*S?A??I*S?A??!I*S?A??B      ??!       J	*?:]???*?:]???!*?:]???R      ??!       Z	*?:]???*?:]???!*?:]???b      ??!       JGPUY?
T????b q?*???cX@y?_eŪ?@