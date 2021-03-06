?	D??]??@D??]??@!D??]??@	??h?!????h?!??!??h?!??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6D??]??@??%=@1???:,??A :̗`??IH?}8???Ya?$?Ӻ?*	Zd;?w]@2U
Iterator::Model::ParallelMapV2V?j-?B??!n ?ו6@)V?j-?B??1n ?ו6@:Preprocessing2F
Iterator::Model?Z(????!???2&F@)??J#f???1 ?p?t?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?e??S9??!p?R?.68@)/?HM???1?5??f}4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenaten3??x??!??"55@)?5?e?s??1??Hȕ:)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?0_^?}??!??o?? @)?0_^?}??1??o?? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??3?ް?!usG???K@)?&?????1sa>?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^?pX?q?!x_?E@?@)^?pX?q?1x_?E@?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapw?
?????!?d?6??8@)#0?70?q?1L??? ^@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??h?!??I??	??RX@Qq????
@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??%=@??%=@!??%=@      ??!       "	???:,?????:,??!???:,??*      ??!       2	 :̗`?? :̗`??! :̗`??:	H?}8???H?}8???!H?}8???B      ??!       J	a?$?Ӻ?a?$?Ӻ?!a?$?Ӻ?R      ??!       Z	a?$?Ӻ?a?$?Ӻ?!a?$?Ӻ?b      ??!       JGPUY??h?!??b q??	??RX@yq????
@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsZ7$'???!Z7$'???"<
sequential_37/dense_111/MatMulMatMul??D:????!n?li?^??0"<
sequential_37/dense_113/SoftmaxSoftmax ?Σ??!oS0?S??"<
sequential_37/dense_112/MatMulMatMul?rZ?=*??!¡??_??0"J
,gradient_tape/sequential_37/dense_111/MatMulMatMul?G???B??!??,??`??0"J
,gradient_tape/sequential_37/dense_112/MatMulMatMulǞ;?????!F??F????0"<
sequential_37/dense_113/MatMulMatMul??20???!F,??,???0"J
.gradient_tape/sequential_37/dense_113/MatMul_1MatMul???SD??!????q???"J
.gradient_tape/sequential_37/dense_112/MatMul_1MatMulփsS??!?p??????"`
=sequential_37/dropout_37/dropout/random_uniform/RandomUniformRandomUniform6???Ë?!??G????Q      Y@Y??(??(.@a?뺮?:U@q?,??ZP@y!?ƺ?Y??"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 