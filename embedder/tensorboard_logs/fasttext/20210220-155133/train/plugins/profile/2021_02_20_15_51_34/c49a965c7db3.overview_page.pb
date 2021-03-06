?	????:3=@????:3=@!????:3=@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-????:3=@?????Z;@1t?v?4???AUka?9??I?*?w????*	?$??{T@2U
Iterator::Model::ParallelMapV2I? OZ??!!?G??=@)I? OZ??1!?G??=@:Preprocessing2F
Iterator::ModelFy??????!?k???dK@)D??????1? ?K?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??r?m???!mw?`?:6@)??~?Ϛ??1C?????2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice:?Y?Xx?!?EǠ @):?Y?Xx?1?EǠ @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?nK??3??!?9'??,@)???nIx?1n??C?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=((E+???!?	?F@)??+??q?1??x??d@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?
?.?f?!Q?6
?'@)?
?.?f?1Q?6
?'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??3?c???!v???1@)Ϡ???e?1????	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noInA?,I?X@Qd??ٴm??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?????Z;@?????Z;@!?????Z;@      ??!       "	t?v?4???t?v?4???!t?v?4???*      ??!       2	Uka?9??Uka?9??!Uka?9??:	?*?w?????*?w????!?*?w????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qnA?,I?X@yd??ٴm???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsk,f?yc??!k,f?yc??"=
sequential_250/dense_750/MatMulMatMul3?6??x??!\??^?@??0"=
 sequential_250/dense_752/SoftmaxSoftmax	??????!]?$ʉ??"=
sequential_250/dense_751/MatMulMatMul???????!?G?ZR???0"-
IteratorGetNext/_2_RecvKF????!̮O???"K
-gradient_tape/sequential_250/dense_751/MatMulMatMul?e??K˙?!l?J?;??0"=
sequential_250/dense_752/MatMulMatMulpMdϫ???!CA?????0"K
-gradient_tape/sequential_250/dense_750/MatMulMatMul??	fv5??!?????<??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamS??D??!?Ϧ?B???"K
/gradient_tape/sequential_250/dense_752/MatMul_1MatMul???W????!?o? ??Q      Y@Y[ZZZZZ6@ajiiiiiS@qu&???R@y
z?]پ??"?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?74.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 