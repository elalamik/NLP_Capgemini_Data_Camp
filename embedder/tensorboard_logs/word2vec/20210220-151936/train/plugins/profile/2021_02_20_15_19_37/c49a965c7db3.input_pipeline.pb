	???O#C@???O#C@!???O#C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???O#C@1zn??A@1cAJ??A??s????I?hs??D@*	??Q??^@2F
Iterator::Model??<???!i!a???M@)xe?????1??sF@@:Preprocessing2U
Iterator::Model::ParallelMapV2o??o?D??!????4;@)o??o?D??1????4;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??6???!??w½?5@)??b)????1eQ??3K0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceӾ??z|?!???-?n@)Ӿ??z|?1???-?n@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorm 6 B|?!\qqc(B@)m 6 B|?1\qqc(B@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip]?wb֋??!?ޞOHD@)`:?۠?{?1?{"??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???
E??!]???)?$@)K?X?Ux?1y?ё?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapO!W?Y??!??cM?)@)uۈ'?i?1?>鐍D@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI[???R?X@Q]?ETC+??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	1zn??A@1zn??A@!1zn??A@      ??!       "	cAJ??cAJ??!cAJ??*      ??!       2	??s??????s????!??s????:	?hs??D@?hs??D@!?hs??D@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q[???R?X@y]?ETC+??