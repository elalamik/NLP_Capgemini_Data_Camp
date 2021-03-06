?	????A@????A@!????A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-????A@5??o?x@@1MLb?G??A??Ά?3??I?,????@*	@5^?IlW@2U
Iterator::Model::ParallelMapV2?]??_??!;;?????@)?]??_??1;;?????@:Preprocessing2F
Iterator::Model?H?5??!??t?[L@)I0??Z
??1??5?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?s`9B??!:??S37@)?x?n?|??1??Z?D3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?߽?Ƅx?!??[?@)?߽?Ƅx?1??[?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??4c?t??!?W h'@)?%?"?dt?1܆?*?A@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipwf??\ä?!x?:?C?E@){?Fw;s?1(6??]@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor+???+n?!*-$??r@)+???+n?1*-$??r@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapc?~?x???!Y֜?$.@)?Z(???i?1????
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???W?sX@Q??eU?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5??o?x@@5??o?x@@!5??o?x@@      ??!       "	MLb?G??MLb?G??!MLb?G??*      ??!       2	??Ά?3????Ά?3??!??Ά?3??:	?,????@?,????@!?,????@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???W?sX@y??eU?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???????!???????"=
sequential_260/dense_780/MatMulMatMul?H?d???!?CV:`??0"=
 sequential_260/dense_782/SoftmaxSoftmax?-[?[??!???0?+??"=
sequential_260/dense_781/MatMulMatMul/??6???!?e?????0"K
-gradient_tape/sequential_260/dense_781/MatMulMatMul?L$?+U??!P?I|???0"K
/gradient_tape/sequential_260/dense_781/MatMul_1MatMul?SĄ???!?h??@??"K
-gradient_tape/sequential_260/dense_780/MatMulMatMul?D?????!?x??????0"K
/gradient_tape/sequential_260/dense_782/MatMul_1MatMul"?e??ː?!??1?y???"-
IteratorGetNext/_2_Recvβ?6???!?]?????"=
sequential_260/dense_782/MatMulMatMulc/?u?ڏ?!??!????0Q      Y@Y??(??(.@a?뺮?:U@q???h?S@y??__???"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 