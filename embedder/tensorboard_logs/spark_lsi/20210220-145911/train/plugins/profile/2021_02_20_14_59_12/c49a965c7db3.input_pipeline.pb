	???	/?>@???	/?>@!???	/?>@	???Ǜ?????Ǜ??!???Ǜ??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???	/?>@aE|?;@1?QcB?%??Ay?Z???I?7??w??Yf?2?}???*	m????
_@2U
Iterator::Model::ParallelMapV2??ฌ???!?L??D=@)??ฌ???1?L??D=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatU???)??!?Y1ݸ7@)^?9?S???1?e=Q4@:Preprocessing2F
Iterator::ModelRH2?w???!?h??_G@)'????9??1p??|?z1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateoK??3???!)???@?5@)??F????1?Jv?̱-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?);??.??!?J?i?@)?);??.??1?J?i?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?n??o???!a??B3?J@)tys?V{x?1"??A@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????mr?!?+Ҟ_?@)????mr?1?+Ҟ_?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap!?A	3m??!!??DF?8@)???2??k?1??p?*?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???Ǜ??I???ipX@Q75ѵW???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	aE|?;@aE|?;@!aE|?;@      ??!       "	?QcB?%???QcB?%??!?QcB?%??*      ??!       2	y?Z???y?Z???!y?Z???:	?7??w???7??w??!?7??w??B      ??!       J	f?2?}???f?2?}???!f?2?}???R      ??!       Z	f?2?}???f?2?}???!f?2?}???b      ??!       JGPUY???Ǜ??b q???ipX@y75ѵW???