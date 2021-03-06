?	j/???Z?@j/???Z?@!j/???Z?@	??%?U?????%?U???!??%?U???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6j/???Z?@?N???<@1W"P??H??A??Ց#??I?!?
???YOZ???f??*	?????)W@2U
Iterator::Model::ParallelMapV2?f/۞?!{?N>C@@)?f/۞?1{?N>C@@:Preprocessing2F
Iterator::Model???;????!?8s??L@)?|????1?H?T?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?F?ҿ$??!X(?8I6@)?<Fy????1{?^??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateq???
??!<?n?V)@)?:?*?x?1?7???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice! _B?w?!^# ?w?@)! _B?w?1^# ?w?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??.¤?!~ǌiT?E@)?g?RD?u?1jT?5?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor&?fe?p?!????M?@)&?fe?p?1????M?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?%r????!#*?ޚ/@)??A?g?1j?84?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??%?U???I?<???TX@Qa?S???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?N???<@?N???<@!?N???<@      ??!       "	W"P??H??W"P??H??!W"P??H??*      ??!       2	??Ց#????Ց#??!??Ց#??:	?!?
????!?
???!?!?
???B      ??!       J	OZ???f??OZ???f??!OZ???f??R      ??!       Z	OZ???f??OZ???f??!OZ???f??b      ??!       JGPUY??%?U???b q?<???TX@ya?S???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??,???!??,???"=
sequential_103/dense_309/MatMulMatMul??e?Ҝ?!?]?y???0"=
 sequential_103/dense_311/SoftmaxSoftmax?˶66??!3тP?Y??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamj!?Ȧ???!`?)ׁ??"K
-gradient_tape/sequential_103/dense_309/MatMulMatMul+W aFЍ?!????^??0"K
/gradient_tape/sequential_103/dense_311/MatMul_1MatMul???%.??!??T????"K
/gradient_tape/sequential_103/dense_310/MatMul_1MatMul. ۺ??!?#?̵???"=
sequential_103/dense_310/MatMulMatMul@\??????!?-?????0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam/??9?%??!??	???"K
-gradient_tape/sequential_103/dense_311/MatMulMatMul?`NQ???!????U??0Q      Y@Y??(??(.@a?뺮?:U@q3w?qM?P@y9?y????"?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 