?	?m?A@?m?A@!?m?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?m?A@]???lp@@1;ǀ??n??A:?`?????I???????*	A`??"oa@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateU?	g????!M?|Fm?H@)3j?J>v??105lF@:Preprocessing2U
Iterator::Model::ParallelMapV2̲'??9??!?7?Wa?0@)̲'??9??1?7?Wa?0@:Preprocessing2F
Iterator::Model?]??k??!Q:?be?@)???8???1>??,?,@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat$?6?De??!2y?+)+@)?d?pu??1??V'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?S???}?!??Ƌ?@)?S???}?1??Ƌ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipi?"?~??!+xqD?&Q@)??.??x?1V2?~<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor*Ŏơ~g?!IB?Ss @)*Ŏơ~g?1IB?Ss @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?z?ю??!I?g?s[I@)??V??`?1sS??@??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIv?r?X@Q??y?\???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	]???lp@@]???lp@@!]???lp@@      ??!       "	;ǀ??n??;ǀ??n??!;ǀ??n??*      ??!       2	:?`?????:?`?????!:?`?????:	??????????????!???????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qv?r?X@y??y?\????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???h???!???h???"=
sequential_273/dense_821/MatMulMatMulm?i?	&??!@?%??&??0"=
sequential_273/dense_819/MatMulMatMul?i?}??!?ܒ?N???0"=
 sequential_273/dense_821/SoftmaxSoftmax?6?$+???!-??3????"=
sequential_273/dense_820/MatMulMatMulMN???p??!ՠ??v??0"K
-gradient_tape/sequential_273/dense_819/MatMulMatMulR#OP㧙?!Gǥ#.??0"K
-gradient_tape/sequential_273/dense_820/MatMulMatMulyxB?'~??!????0"K
/gradient_tape/sequential_273/dense_820/MatMul_1MatMul#<?Ii??! ?]<????"K
/gradient_tape/sequential_273/dense_821/MatMul_1MatMul???s????!???C1>??"b
?sequential_273/dropout_273/dropout/random_uniform/RandomUniformRandomUniform???P?ȑ?!vL???Z??Q      Y@Y[ZZZZZ6@ajiiiiiS@qϱu??N@yZ?Z???"?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?61.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 