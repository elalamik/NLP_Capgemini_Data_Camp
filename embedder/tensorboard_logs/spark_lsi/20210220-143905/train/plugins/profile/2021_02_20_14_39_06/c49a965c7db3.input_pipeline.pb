	?!?{?5@?!?{?5@!?!?{?5@	(=(?>3??(=(?>3??!(=(?>3??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?!?{?5@:?????3@1??<????A?`obHN??I???0?%??Y?p;4,F??*	"??~j?h@2U
Iterator::Model::ParallelMapV2#K?X?U??! ???N@)#K?X?U??1 ???N@:Preprocessing2F
Iterator::Model?ut\???!??b??=R@)??@j??1Cm-??&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateY???.Ě?!?>UwQ*@)̵h?V??1lÃ?#@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatTT?J?Ó?!?]?l1o#@)??lu9%??1ǚZ?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5&?\R?}?!D??E?5@)5&?\R?}?1D??E?5@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??qo~??!P	u??;@)Zd;?O?w?1??wI_(@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorh??n?l?!??H?Qy??)h??n?l?1??H?Qy??:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?????U??!?ڝ??,@)h?N???d?1??D?3??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9'=(?>3??I$]Z?GX@Q?w???Z@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	:?????3@:?????3@!:?????3@      ??!       "	??<??????<????!??<????*      ??!       2	?`obHN???`obHN??!?`obHN??:	???0?%?????0?%??!???0?%??B      ??!       J	?p;4,F???p;4,F??!?p;4,F??R      ??!       Z	?p;4,F???p;4,F??!?p;4,F??b      ??!       JGPUY'=(?>3??b q$]Z?GX@y?w???Z@