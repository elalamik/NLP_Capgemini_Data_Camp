	˂???*?@˂???*?@!˂???*?@	? N????? N????!? N????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6˂???*?@*??Y?^<@1x|{נ/??A??f????I$bJ$????Y]p????*	ףp=
?S@2U
Iterator::Model::ParallelMapV2?7j??{??!G????B@)?7j??{??1G????B@:Preprocessing2F
Iterator::Modelڎ?????!?i~??K@)????6??1NU`?1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?@d?&ޑ?!1????5@)?N?o+??1??@jJ?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice|~!<z?!??s? @)|~!<z?1??s? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?E???Ԉ?!??VG?.@)=???mw?1X?a?	?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip"?aK????!??9?F@)bMeQ?Eq?1CP??8@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???$xCj?!4?=?D"@)???$xCj?14?=?D"@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???;??!?:???2@)A)Z??e?1?l????
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9? N????Ii?}4?X@QX<?S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	*??Y?^<@*??Y?^<@!*??Y?^<@      ??!       "	x|{נ/??x|{נ/??!x|{נ/??*      ??!       2	??f??????f????!??f????:	$bJ$????$bJ$????!$bJ$????B      ??!       J	]p????]p????!]p????R      ??!       Z	]p????]p????!]p????b      ??!       JGPUY? N????b qi?}4?X@yX<?S@