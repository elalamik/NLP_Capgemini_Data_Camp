	n2???;@n2???;@!n2???;@	?K?N[????K?N[???!?K?N[???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6n2???;@?G?)s:@1>^H??0??A?ᱟ?R??I??:ǀ???YR?Hڍ>??*	Zd;??`@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat0???s??!3??

?>@)??@?S??1?a???<@:Preprocessing2F
Iterator::Model7?Nx	N??!??R?=E@)>^H??0??1???3?5@:Preprocessing2U
Iterator::Model::ParallelMapV20.Ui?k??!?@????4@)0.Ui?k??1?@????4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?e??
??!?aSh??2@)?+?,???1????{?%@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??7?0??!e?) @)??7?0??1e?) @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???׳?!br???L@)`:?۠?{?1???*D@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?tv28J??!?VHj??5@)?<?E~?p?1⩧??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorJ??	?yk?!?,?ǻ?@)J??	?yk?1?,?ǻ?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?K?N[???IGBO?GX@Qn??O???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?G?)s:@?G?)s:@!?G?)s:@      ??!       "	>^H??0??>^H??0??!>^H??0??*      ??!       2	?ᱟ?R???ᱟ?R??!?ᱟ?R??:	??:ǀ?????:ǀ???!??:ǀ???B      ??!       J	R?Hڍ>??R?Hڍ>??!R?Hڍ>??R      ??!       Z	R?Hڍ>??R?Hڍ>??!R?Hڍ>??b      ??!       JGPUY?K?N[???b qGBO?GX@yn??O???