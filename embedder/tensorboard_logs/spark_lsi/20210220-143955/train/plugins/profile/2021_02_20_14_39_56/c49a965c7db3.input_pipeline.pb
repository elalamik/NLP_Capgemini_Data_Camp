	X?%??e@@X?%??e@@!X?%??e@@	?Vu?eY@?Vu?eY@!?Vu?eY@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6X?%??e@@?.?e??=@1????U??AN??????Iޑ??????Y?p̲'??*	V-?W@2U
Iterator::Model::ParallelMapV2??Ü???!?A?\(|>@)??Ü???1?A?\(|>@:Preprocessing2F
Iterator::Model?N??C??!}Ʀ?N@)؀q???1UKs???=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?U?P?ג?!????c3@)y?JxB???17??QM0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????x?!@?@)?????x?1@?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateԷ?鲈?!M????i)@)????߆x?1???M?<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipz?c??T??!?9Y?"?C@)??#v?1N>>)?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?]???h?!1?e??@)?]???h?11?e??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapt}???!??Er?v-@)?J=By_?1??^>1 @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Vu?eY@I????W@Q?O
w`?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?.?e??=@?.?e??=@!?.?e??=@      ??!       "	????U??????U??!????U??*      ??!       2	N??????N??????!N??????:	ޑ??????ޑ??????!ޑ??????B      ??!       J	?p̲'???p̲'??!?p̲'??R      ??!       Z	?p̲'???p̲'??!?p̲'??b      ??!       JGPUY?Vu?eY@b q????W@y?O
w`?@