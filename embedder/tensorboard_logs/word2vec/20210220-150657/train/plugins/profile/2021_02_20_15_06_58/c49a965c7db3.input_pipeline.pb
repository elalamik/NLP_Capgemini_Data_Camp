	c	kc? 7@c	kc? 7@!c	kc? 7@	?3???????3??????!?3??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6c	kc? 7@????w5@1V?j-????A??W?<ק?I?PlMK??Y?S?[???*	??n?PY@2U
Iterator::Model::ParallelMapV2?QG??Ȟ?!??Uw??=@)?QG??Ȟ?1??Uw??=@:Preprocessing2F
Iterator::ModelU?3?Y??!D!??`J@)SX??????1N??Z?7@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateoӟ?H??!Py?-8@)??UJ????1??1H2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ډ???!?6C?/@)?\???ʋ?1??<???*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)??qx?!????N?@))??qx?1????N?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip%Z?xZ~??!???Q?G@)G???R{q?1ڳÐ"?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??WuV??!ӄ??;@)<??k?g?1???,??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?4`??ie?!\??F??@)?4`??ie?1\??F??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?3??????IN5o /5X@Q;	㳰2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????w5@????w5@!????w5@      ??!       "	V?j-????V?j-????!V?j-????*      ??!       2	??W?<ק???W?<ק?!??W?<ק?:	?PlMK???PlMK??!?PlMK??B      ??!       J	?S?[????S?[???!?S?[???R      ??!       Z	?S?[????S?[???!?S?[???b      ??!       JGPUY?3??????b qN5o /5X@y;	㳰2@