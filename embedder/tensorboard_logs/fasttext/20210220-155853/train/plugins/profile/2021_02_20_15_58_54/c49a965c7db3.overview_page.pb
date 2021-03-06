?	ު?PM?D@ު?PM?D@!ު?PM?D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-ު?PM?D@ ?ҥ}B@1:?=??A?c?g^??I?}9?]?
@*	??ʡEY@2U
Iterator::Model::ParallelMapV2?q:??!?˾@@)?q:??1?˾@@:Preprocessing2F
Iterator::Model?p?GRҫ?!Z,ۥ
K@)??je?/??1w?#p??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??p???!j?1??4@)?{,GȐ?1??y?O0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate7?',????!?:?t$?1@){/?h???1?]?Q?&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???4??z?![.?`?#@)???4??z?1[.?`?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipϢw*????!???$Z?F@)c`?u?1?????x@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor#h?$?o?!?C'@)#h?$?o?1?C'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap$??P??!??Ϸ4@)??;??~f?1??^&U?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIWꖊ̎X@Q$jEZ?L??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 ?ҥ}B@ ?ҥ}B@! ?ҥ}B@      ??!       "	:?=??:?=??!:?=??*      ??!       2	?c?g^???c?g^??!?c?g^??:	?}9?]?
@?}9?]?
@!?}9?]?
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qWꖊ̎X@y$jEZ?L???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsm?\A4??!m?\A4??"=
sequential_271/dense_813/MatMulMatMulҤS?????!/G????0"=
 sequential_271/dense_815/SoftmaxSoftmax]q???Ǘ?!3}xG???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamJ?R]v??!<?B?????"K
-gradient_tape/sequential_271/dense_813/MatMulMatMulX~4????!d	CQ???0"K
/gradient_tape/sequential_271/dense_815/MatMul_1MatMul?~@I$??!D???Jp??"K
/gradient_tape/sequential_271/dense_814/MatMul_1MatMul?l?.??!??Pc?`??"=
sequential_271/dense_814/MatMulMatMul& ????!?=??,I??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam??띉??!?v???"c
Fgradient_tape/sequential_271/batch_normalization_135/moments/truediv_1RealDiv?Aa??v??!&?1?????Q      Y@Y??(??(.@a?뺮?:U@qV?92~
T@y	?Jr???"?
both?Your program is POTENTIALLY input-bound because 90.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?80.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 