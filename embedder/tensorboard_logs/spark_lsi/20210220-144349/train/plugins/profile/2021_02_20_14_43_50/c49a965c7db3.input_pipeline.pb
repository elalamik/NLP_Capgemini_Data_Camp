	B?f??V?@B?f??V?@!B?f??V?@	?a?o7????a?o7???!?a?o7???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6B?f??V?@??k??;@1ӿ$?)???A????9]??I2 Ǟ? @YϞ??$???*	"??~j<Z@2U
Iterator::Model::ParallelMapV2[B>?٬??!-!???8@)[B>?٬??1-!???8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!?!=??=@)?e??
??1U??^?;8@:Preprocessing2F
Iterator::Modelxb֋????!1?3??F@)??n/i???1aQE???4@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?C?Ö??!???>?K@)8K?rJ?1??õ?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateʩ?ajK??!??B??B+@)?׻?~?1??D??%@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicevP??W|?!>8A?E_@)vP??W|?1>8A?E_@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??\7??v?!??|xo(@)??\7??v?1??|xo(@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??X?????!?u'?bd1@)?Z'.?+p?1?0Ж@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?a?o7???It?h0?W@QXK?4WD@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??k??;@??k??;@!??k??;@      ??!       "	ӿ$?)???ӿ$?)???!ӿ$?)???*      ??!       2	????9]??????9]??!????9]??:	2 Ǟ? @2 Ǟ? @!2 Ǟ? @B      ??!       J	Ϟ??$???Ϟ??$???!Ϟ??$???R      ??!       Z	Ϟ??$???Ϟ??$???!Ϟ??$???b      ??!       JGPUY?a?o7???b qt?h0?W@yXK?4WD@