		?Į??=@	?Į??=@!	?Į??=@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-	?Į??=@;?f??;@1??~?n???A?/EHݦ?I?????*	^?I?U@2U
Iterator::Model::ParallelMapV2??o?DI??!J??F?B@)??o?DI??1J??F?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeath@?5_??!???4??7@)?~?N??1?I??T4@:Preprocessing2F
Iterator::Model3??3???!o?%?{!I@)??x??[??1????v*,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?K?A????!<???
,1@))? ???1$B?U??!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicem7?7M?}?!UI$qs @)m7?7M?}?1UI$qs @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipe????c??!?d?	??H@)?=ϟ6?s?1C????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorE?a??h?!?Ӌ]@@)E?a??h?1?Ӌ]@@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???~??!he?0?4@);ŪAh?1a	f?*?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIO??g׎X@Q(,&J??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	;?f??;@;?f??;@!;?f??;@      ??!       "	??~?n?????~?n???!??~?n???*      ??!       2	?/EHݦ??/EHݦ?!?/EHݦ?:	??????????!?????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qO??g׎X@y(,&J??