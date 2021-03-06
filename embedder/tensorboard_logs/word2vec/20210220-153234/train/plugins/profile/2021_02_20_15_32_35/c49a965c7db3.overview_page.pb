?	_????E@_????E@!_????E@	dLg??@dLg??@!dLg??@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6_????E@9????C@1?Bs?F???A)???]??Iz?m?(???Yf3??
??*	f;?O??h@2U
Iterator::Model::ParallelMapV2VF#?W<??!?Tw](E@)VF#?W<??1?Tw](E@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?HV???!59?V
?>@)仔?d??1??an?:@:Preprocessing2F
Iterator::Modelv?;O<g??!??X0?+K@)?a?????1M)?K?u(@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?]??yȔ?!?>F?$@)?Hi6?Ð?1[?Z?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?h????~?!D=??d@)?h????~?1D=??d@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?m?\p??!!??\?F@)?[??y?1????|V	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor2U0*?p?!?+?ed???)2U0*?p?1?+?ed???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?dV?p;??!?K?s#@@):?Y?Xh?1!???#??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9dLg??@IW???J?W@Q??x?C???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	9????C@9????C@!9????C@      ??!       "	?Bs?F????Bs?F???!?Bs?F???*      ??!       2	)???]??)???]??!)???]??:	z?m?(???z?m?(???!z?m?(???B      ??!       J	f3??
??f3??
??!f3??
??R      ??!       Z	f3??
??f3??
??!f3??
??b      ??!       JGPUYdLg??@b qW???J?W@y??x?C????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsXG,?,??!XG,?,??"-
IteratorGetNext/_1_Send7 _ ؠ?!f???,C??"=
sequential_190/dense_570/MatMulMatMulJ ·Z???!xO?g?e??0"=
 sequential_190/dense_572/SoftmaxSoftmax.??o??!~i?X???"K
-gradient_tape/sequential_190/dense_570/MatMulMatMul?? Z??!o??X????0"=
sequential_190/dense_571/MatMulMatMul>U???!??z$d ??0"K
/gradient_tape/sequential_190/dense_572/MatMul_1MatMul?jJ?-???!?T?69??"K
-gradient_tape/sequential_190/dense_571/MatMulMatMul?PQ???!?^?FJ??0"K
/gradient_tape/sequential_190/dense_571/MatMul_1MatMul?]?x??!?.ʟ?K??"L
2sequential_190/batch_normalization_94/moments/meanMean0???a??!r?b??F??Q      Y@Y??(??(.@a?뺮?:U@q??=???8@yƦ??--??"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?24.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 