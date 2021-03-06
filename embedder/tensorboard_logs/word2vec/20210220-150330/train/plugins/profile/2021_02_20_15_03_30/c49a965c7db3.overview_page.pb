?	
???%ZB@
???%ZB@!
???%ZB@	R0???u??R0???u??!R0???u??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6
???%ZB@3܀???@1vöE???AŬC9Ѧ?IU?????@Y?S?D?[??*	????҅X@2U
Iterator::Model::ParallelMapV2k{?????!???K?@@)k{?????1???K?@@:Preprocessing2F
Iterator::Model?|гY???!?Lq???I@)4ڪ$???1???4?1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE??b???!V)?}??5@)p$?`S???1?{??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateKvl?u??!?C??tT-@)??????1?!?`?!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipf???C??!(??>(H@)?b?J!??1tm?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice7ݲC??v?!?
]?'?@)7ݲC??v?1?
]?'?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap46<???!??6,??2@)~?k?,	p?1?#s???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ng_y?n?!?k???m@)?ng_y?n?1?k???m@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 86.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?12.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9R0???u??I 4?>??X@Q???c?&??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	3܀???@3܀???@!3܀???@      ??!       "	vöE???vöE???!vöE???*      ??!       2	ŬC9Ѧ?ŬC9Ѧ?!ŬC9Ѧ?:	U?????@U?????@!U?????@B      ??!       J	?S?D?[???S?D?[??!?S?D?[??R      ??!       Z	?S?D?[???S?D?[??!?S?D?[??b      ??!       JGPUYR0???u??b q 4?>??X@y???c?&???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????????!????????"<
sequential_96/dense_290/SoftmaxSoftmax?o6'??!=R??H??"<
sequential_96/dense_288/MatMulMatMul*?#????!p??7z???0"J
,gradient_tape/sequential_96/dense_288/MatMulMatMul?}?MI??!O?R	???0"J
.gradient_tape/sequential_96/dense_289/MatMul_1MatMulGh)???!iӟ?S??"J
.gradient_tape/sequential_96/dense_290/MatMul_1MatMulYSE?i???!I?g<????"<
sequential_96/dense_289/MatMulMatMulk~?yߛ??!0?4f??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamN??^???!E& R??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????j???!z??2{??"J
,gradient_tape/sequential_96/dense_289/MatMulMatMul??(^Z'??!??t????0Q      Y@Y[ZZZZZ6@ajiiiiiS@qDp??GN@y?z3}???"?
both?Your program is POTENTIALLY input-bound because 86.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?12.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?60.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 