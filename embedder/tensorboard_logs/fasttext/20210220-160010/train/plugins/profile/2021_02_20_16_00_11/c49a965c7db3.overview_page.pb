?	????)A@????)A@!????)A@	??????????????!???????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????)A@_?L?4@@1????\???Aǂ L???I?$y??C??Y^?pX???*	X9???]@2U
Iterator::Model::ParallelMapV2Ș?????!'? R5@)Ș?????1'? R5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??? ??!??K*b?;@)?Y???
??1???2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??7j????!P??oj?6@)???F????1a?۞?2@:Preprocessing2F
Iterator::Model???????!?	pC@)??g??s??1?d?r?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceD??????!??;??!@)D??????1??;??!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??>???!???@??N@)??I`s~?1??	͋?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???죣?!_k???@@)*???Ou?1??k??D@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor}?K???t?!???Q.@)}?K???t?1???Q.@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???????I??fvmX@Q?2]Ї???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	_?L?4@@_?L?4@@!_?L?4@@      ??!       "	????\???????\???!????\???*      ??!       2	ǂ L???ǂ L???!ǂ L???:	?$y??C???$y??C??!?$y??C??B      ??!       J	^?pX???^?pX???!^?pX???R      ??!       Z	^?pX???^?pX???!^?pX???b      ??!       JGPUY???????b q??fvmX@y?2]Ї????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsw*?T??!w*?T??"=
sequential_274/dense_822/MatMulMatMulBvi2??!?V0??0??0"=
 sequential_274/dense_824/SoftmaxSoftmax?? ????!?bp?m??"=
sequential_274/dense_823/MatMulMatMul?? ????!?r?}????0"-
IteratorGetNext/_1_SendMƟj?x??!?nJ$9???"K
-gradient_tape/sequential_274/dense_822/MatMulMatMul2?E	h??!????7??0"K
-gradient_tape/sequential_274/dense_823/MatMulMatMul??_Su??!N??????0"=
sequential_274/dense_824/MatMulMatMul??_Su??!???$d&??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???????!*(??n???"K
/gradient_tape/sequential_274/dense_824/MatMul_1MatMul?TY|4???!w?SDr???Q      Y@Y[ZZZZZ6@ajiiiiiS@q??I^???@y? ?????"?
both?Your program is POTENTIALLY input-bound because 94.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?32.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 