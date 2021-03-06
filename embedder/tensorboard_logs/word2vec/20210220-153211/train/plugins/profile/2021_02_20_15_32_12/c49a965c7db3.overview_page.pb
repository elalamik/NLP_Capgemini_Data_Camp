?	J?E??C@J?E??C@!J?E??C@	`?J??/??`?J??/??!`?J??/??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6J?E??C@?I??GB@1B?<?E~??A}w+Kt???IQ??99@Y?U]???*	?rh??W@2U
Iterator::Model::ParallelMapV2x?a????!???ӊ?@@)x?a????1???ӊ?@@:Preprocessing2F
Iterator::Model? ?س???!R?ڶkkL@)?&P?"??1%?a??a7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat Tq????!??>?5@)?_u?Hg??1;??S1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatea??+e??!?+??!?*@)h ???z?1T?uD@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????:8x?!?\????@)????:8x?1?\????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?J?*n??!?a%I??E@)Q3???Uv?1Oc*???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???o^l?!?t???@)???o^l?1?t???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?h?󊧎?!?Z?W?00@)???|	e?1%???8@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9a?J??/??IR?@M?lX@QK??= @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?I??GB@?I??GB@!?I??GB@      ??!       "	B?<?E~??B?<?E~??!B?<?E~??*      ??!       2	}w+Kt???}w+Kt???!}w+Kt???:	Q??99@Q??99@!Q??99@B      ??!       J	?U]????U]???!?U]???R      ??!       Z	?U]????U]???!?U]???b      ??!       JGPUYa?J??/??b qR?@M?lX@yK??= @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?\?1j]??!?\?1j]??"=
 sequential_188/dense_566/SoftmaxSoftmax?[??'??!?g-fB??"=
sequential_188/dense_564/MatMulMatMul?Q??}+??!0R?????0"=
sequential_188/dense_565/MatMulMatMul????0??!?L??????0"K
-gradient_tape/sequential_188/dense_565/MatMulMatMult???????!????????0"K
/gradient_tape/sequential_188/dense_566/MatMul_1MatMul?Z?I???!X?????"K
/gradient_tape/sequential_188/dense_565/MatMul_1MatMulChn?{??!0?L????"L
2sequential_188/batch_normalization_92/moments/meanMean?ܛ?Ȑ?!?}r?
???"=
sequential_188/dense_566/MatMulMatMul?]?JGT??!?CnO???0"-
IteratorGetNext/_1_Send(^?(*??!?i??????Q      Y@Y??(??(.@a?뺮?:U@q?B}M?Q@yS??????"?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?70.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 