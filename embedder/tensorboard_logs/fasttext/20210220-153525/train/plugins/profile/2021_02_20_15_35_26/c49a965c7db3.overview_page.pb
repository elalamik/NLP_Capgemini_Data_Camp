?	ڏ?a?@@ڏ?a?@@!ڏ?a?@@	?'?G????'?G???!?'?G???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ڏ?a?@@u?b?T?>@1?we???A??|#?g??Ih=|?(??Y|}?K????*	?/?$>V@2U
Iterator::Model::ParallelMapV2K:??l??!?2?d?>@)K:??l??1?2?d?>@:Preprocessing2F
Iterator::Modelׄ?Ơ??!???K?L@)dϞ??$??1֎u2?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??Z	?%??!?|+?e?2@)?DIH?m??1`#.?4/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????U???!?K??/@)?G??~?1??$d? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??	???{?!?D?k܆@)??	???{?1?D?k܆@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?2???y??!Q?_?`E@)???SVs?1?r瞒9@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???)Wxg?!;Z?4??	@)???)Wxg?1;Z?4??	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapφ?3????!?v??2@)?{?i??c?1?{????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?'?G???Iw?5Ă]X@Q'l2?~? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	u?b?T?>@u?b?T?>@!u?b?T?>@      ??!       "	?we????we???!?we???*      ??!       2	??|#?g????|#?g??!??|#?g??:	h=|?(??h=|?(??!h=|?(??B      ??!       J	|}?K????|}?K????!|}?K????R      ??!       Z	|}?K????|}?K????!|}?K????b      ??!       JGPUY?'?G???b qw?5Ă]X@y'l2?~? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???rt??!???rt??"=
sequential_198/dense_594/MatMulMatMulH;C\?8??!U?bC????0"=
 sequential_198/dense_596/SoftmaxSoftmax?4??v??!?L!%a???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamK?h?dő?!?b?????"K
-gradient_tape/sequential_198/dense_594/MatMulMatMul?n&;zw??!ɠa????0"=
sequential_198/dense_595/MatMulMatMul??PY?s??!\??K?P??0"K
/gradient_tape/sequential_198/dense_596/MatMul_1MatMul??{???!j?xo?>??"K
/gradient_tape/sequential_198/dense_595/MatMul_1MatMul|??R???!??x?+??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?r鎍ɇ?![?p????"`
Cgradient_tape/sequential_198/batch_normalization_98/moments/truedivRealDivc<6?۱??!>??N]???Q      Y@Y??(??(.@a?뺮?:U@q??#?R@y-_?????"?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 