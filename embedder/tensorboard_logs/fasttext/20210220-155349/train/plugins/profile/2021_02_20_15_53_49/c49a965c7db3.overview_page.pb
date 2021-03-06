?	+??p?;@@+??p?;@@!+??p?;@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-+??p?;@@ҏ?S?^>@1??9?}c??A??~m????I?>????*	/?$?V@2U
Iterator::Model::ParallelMapV2??1 {???!7??E@)??1 {???17??E@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?/J?_???!???I?3@)T???f??194[w?0@:Preprocessing2F
Iterator::Model?aK??z??!??;?vAL@)<Mf?????1?????,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?L?x$^??!?????30@)T:X??0?1J??xS? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicec_??`?}?!}')?׆@)c_??`?}?1}')?׆@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip̶?ֈ`??!E ?x??E@)jM??s?1??p??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor'??bg?!KkU?V?@)'??bg?1KkU?V?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapA?
????!?!?c)3@)?? n/f?1??[  ?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI´=??X@Q@{ϒpQ??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ҏ?S?^>@ҏ?S?^>@!ҏ?S?^>@      ??!       "	??9?}c????9?}c??!??9?}c??*      ??!       2	??~m??????~m????!??~m????:	?>?????>????!?>????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q´=??X@y@{ϒpQ???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?"?u[\??!?"?u[\??"-
IteratorGetNext/_2_Recv??zȠ??!c???O??"=
sequential_259/dense_777/MatMulMatMul?C-,?4??!~iYtV??0"K
-gradient_tape/sequential_259/dense_777/MatMulMatMullOa#n???!u ?;?Q??0"=
 sequential_259/dense_779/SoftmaxSoftmax_{M????!??vp???"=
sequential_259/dense_778/MatMulMatMulpF??,I??!?4?8V???0"K
/gradient_tape/sequential_259/dense_779/MatMul_1MatMul%?.Ůܘ?!d"$%!C??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???????!?,?S???"K
/gradient_tape/sequential_259/dense_778/MatMul_1MatMul???	??!?w??2??"K
-gradient_tape/sequential_259/dense_778/MatMulMatMul??z?????!? ?????0Q      Y@Y[ZZZZZ6@ajiiiiiS@qf?"}f/P@y٫?\????"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?64.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 