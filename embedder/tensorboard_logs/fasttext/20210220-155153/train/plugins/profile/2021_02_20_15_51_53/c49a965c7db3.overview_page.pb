?	?T???;@?T???;@!?T???;@	????c??????c??!????c??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?T???;@ D2???9@1???,????AOjM???I?????=??Y!Y?n??*	MbX9,[@2U
Iterator::Model::ParallelMapV2d??3?Ę?!??Oh A6@)d??3?Ę?1??Oh A6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???'?.??!?FBR9@)4?Op????1Z5?vdV4@:Preprocessing2F
Iterator::Model????ߦ?!x??6'?D@)???K????1fj?N?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate1]??a??!U??
??5@)͐*?WY??15 ????(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?)? ?h??!u~b?v<#@)?)? ?h??1u~b?v<#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip[?kBZc??!?i^??rM@)P?}:3??1?[ ?+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??z?"0v?!݄?=w?@)??z?"0v?1݄?=w?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?e??E??!???NdL:@)}!????s?1????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????c??I,$h?"lX@QW??:6 @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	 D2???9@ D2???9@! D2???9@      ??!       "	???,???????,????!???,????*      ??!       2	OjM???OjM???!OjM???:	?????=???????=??!?????=??B      ??!       J	!Y?n??!Y?n??!!Y?n??R      ??!       Z	!Y?n??!Y?n??!!Y?n??b      ??!       JGPUY????c??b q,$h?"lX@yW??:6 @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??9?H??!??9?H??"=
sequential_251/dense_753/MatMulMatMul?7]?????!??8M?9??0"-
IteratorGetNext/_1_Send?^???,??!?η?z???"=
 sequential_251/dense_755/SoftmaxSoftmaxa?(9/???!j[J?}??"=
sequential_251/dense_754/MatMulMatMulsć? ???!??ڏ???0"K
-gradient_tape/sequential_251/dense_753/MatMulMatMul?[*×?!m?$z?x??0"K
-gradient_tape/sequential_251/dense_754/MatMulMatMul?[*×?!)?F????0"=
sequential_251/dense_755/MatMulMatMulJ,??J??!?՗c?i??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamWӥh?h??!#3"?-???"K
/gradient_tape/sequential_251/dense_754/MatMul_1MatMul???6Õ?!E?MYa,??Q      Y@Y[ZZZZZ6@ajiiiiiS@qI̊?K@y?@??4r??"?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?54.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 