	ka󶩄@ka󶩄@!ka󶩄@	鷦?3磒??鷦?3磒??!鷦?3磒??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ka󶩄@鉛?6琶6@1G藖j[??Af踚kD0??Ii岮'凬??Y(?裿L??*	6^篒:a@2U
Iterator::Model::ParallelMapV2豣废*3??!箮啸D@)豣废*3??1箮啸D@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipW#灰2R??!*講1F@)滻洩{??1.?Nk-@:Preprocessing2F
Iterator::Model愓瓰??!?)塜;蜬@)=远a??1ul馐
u,@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat鮥櫁?!AI钸'?0@)写氖h鋼?1?1,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate蚙
H???!x?@?&@)﹉濏??15U?}h@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice釞?$堡|?!糘~L@)釞?$堡|?1糘~L@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor"﹨捝﹎?!闟?@)"﹨捝﹎?1闟?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??彃?!?麖WM*@)W'g(顇c?1裎粯??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9鶆?3磒??IkX@Q?懃o @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	鉛?6琶6@鉛?6琶6@!鉛?6琶6@      ??!       "	G藖j[??G藖j[??!G藖j[??*      ??!       2	f踚kD0??f踚kD0??!f踚kD0??:	i岮'凬??i岮'凬??!i岮'凬??B      ??!       J	(?裿L??(?裿L??!(?裿L??R      ??!       Z	(?裿L??(?裿L??!(?裿L??b      ??!       JGPUY鶆?3磒??b qkX@y?懃o @