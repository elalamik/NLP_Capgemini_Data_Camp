	??Z? A@??Z? A@!??Z? A@	<x????<x????!<x????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??Z? A@]~p>@@1Ϡ????A ?_>Y1??I????ms??Y?l#????*	!?rh??U@2U
Iterator::Model::ParallelMapV2?%ǝ????!??t0_Z>@)?%ǝ????1??t0_Z>@:Preprocessing2F
Iterator::Modelڑ?;?(??!??zR?L@)??ګ???1sπ?D?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?]=???!3??cY4@)???dp???1??W1?50@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??fc%?y?!??v:,a@)??fc%?y?1??v:,a@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatek?????!dHO͹+@)1E?4~?u?12?'`G?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?"N'????!r???uE@)E?N???t?1U+??̴@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(?8'0m?!(??+?@)(?8'0m?1(??+?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap<2V??W??!?bE?Ĥ0@)C?=??e?1V??4??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9=x????I?0?L{X@Q???6E??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	]~p>@@]~p>@@!]~p>@@      ??!       "	Ϡ????Ϡ????!Ϡ????*      ??!       2	 ?_>Y1?? ?_>Y1??! ?_>Y1??:	????ms??????ms??!????ms??B      ??!       J	?l#?????l#????!?l#????R      ??!       Z	?l#?????l#????!?l#????b      ??!       JGPUY=x????b q?0?L{X@y???6E??