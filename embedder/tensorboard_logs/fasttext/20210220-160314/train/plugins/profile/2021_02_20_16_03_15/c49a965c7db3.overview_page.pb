?	?3??D@?3??D@!?3??D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?3??D@%??W??B@1Y?????At???1??I_?sa??@*	???S?U@2U
Iterator::Model::ParallelMapV2)??=$|??!???GĈA@))??=$|??1???GĈA@:Preprocessing2F
Iterator::ModelY2?????!?m}o?M@)ȗP????18??jV_8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat o?ŏ??!??dyx?3@)??~K???1?Gl??/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicer?#Dv?!c?ݒ??@)r?#Dv?1c?ݒ??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateץF?g???!?p@?h(@)?????u?1???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipG?(5??!B咂?GD@)??N?z1t?1?Ez?}@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Y??8j?!W?uM5@)?Y??8j?1W?uM5@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?b?0훋?!?W_?b?.@)???"?f?1??{ ?]	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?]?{X@Q??NTD? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	%??W??B@%??W??B@!%??W??B@      ??!       "	Y?????Y?????!Y?????*      ??!       2	t???1??t???1??!t???1??:	_?sa??@_?sa??@!_?sa??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?]?{X@y??NTD? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????DG??!????DG??"-
IteratorGetNext/_2_Recv?>6???!?^Y5n??"=
sequential_287/dense_861/MatMulMatMul?j>?Y??!J??????0"K
-gradient_tape/sequential_287/dense_861/MatMulMatMul?I??6??!??%Cx+??0"=
 sequential_287/dense_863/SoftmaxSoftmax3ԕ2?Ҕ?!a?x?????"=
sequential_287/dense_862/MatMulMatMul?y>)?\??!M3P???0"K
/gradient_tape/sequential_287/dense_862/MatMul_1MatMul2?y???!n&?.???"K
-gradient_tape/sequential_287/dense_862/MatMulMatMul?#? c-??!??GO??0"Q
7sequential_287/batch_normalization_143/moments/varianceMeanc #=b??!?'?Y??"M
3sequential_287/batch_normalization_143/moments/meanMean?,\???!Շ?9? ??Q      Y@Y??(??(.@a?뺮?:U@q*?????L@yw??ވ??"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 