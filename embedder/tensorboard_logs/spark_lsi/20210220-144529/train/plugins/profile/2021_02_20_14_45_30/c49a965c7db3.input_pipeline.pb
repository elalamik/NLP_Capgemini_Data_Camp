	|b?*?@@|b?*?@@!|b?*?@@	U?cQب@U?cQب@!U?cQب@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6|b?*?@@37߈?!<@1C?? ????ARF\ ???I????q?@Y?Zd;_??*	{?G?jV@2U
Iterator::Model::ParallelMapV2*?T???!?? @@)*?T???1?? @@:Preprocessing2F
Iterator::Model??????!^tL?	bL@)^????1I??
??8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatwe????!?;?j{5@)?,??;??1	f&???1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice3O?)??y?!3k???&@)3O?)??y?13k???&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????̉?!?C??<,@)O>=?e?y?1?'??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipl=C8f٣?!???Y??E@):y?	?5r?1k??"-?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??V?I?k?!e???3l@)??V?I?k?1e???3l@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap&n?@׎?!?Gtq6?0@)??~P)d?1?.?k??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9U?cQب@I{~h?c?W@QI????J@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	37߈?!<@37߈?!<@!37߈?!<@      ??!       "	C?? ????C?? ????!C?? ????*      ??!       2	RF\ ???RF\ ???!RF\ ???:	????q?@????q?@!????q?@B      ??!       J	?Zd;_???Zd;_??!?Zd;_??R      ??!       Z	?Zd;_???Zd;_??!?Zd;_??b      ??!       JGPUYU?cQب@b q{~h?c?W@yI????J@