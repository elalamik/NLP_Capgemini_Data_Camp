?	#?tu?8@#?tu?8@!#?tu?8@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-#?tu?8@}Xo?
?5@1??????ADN_??,??I]????*	?|?5^bU@2F
Iterator::ModelY??+????!?GB?L@)?W?ޙ?1ZM?U'?=@:Preprocessing2U
Iterator::Model::ParallelMapV2??? 4J??!?A?&??:@)??? 4J??1?A?&??:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?-v??2??!????5@)???'??1??ɏ?q2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice	n?l??{?!?>^>y?@)	n?l??{?1?>^>y?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?bE?a??!h???+@)?W歺u?1h?8˂
@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipk?MG 7??!_??A??E@)?ͮ{+r?1?Sx??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor}??z?Vh?!j?Wl?@)}??z?Vh?1j?Wl?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???N?`??!?m??@?0@)?x?c?1~?݀?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??~??qX@QF'???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	}Xo?
?5@}Xo?
?5@!}Xo?
?5@      ??!       "	????????????!??????*      ??!       2	DN_??,??DN_??,??!DN_??,??:	]????]????!]????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??~??qX@yF'???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsa?ԩ????!a?ԩ????";
sequential_33/dense_99/MatMulMatMulSe?	???![+?????0"<
sequential_33/dense_101/SoftmaxSoftmax??x]B??!???\??"<
sequential_33/dense_100/MatMulMatMulZpH?Ԝ?!?%W?Z)??0"I
+gradient_tape/sequential_33/dense_99/MatMulMatMul;??t`??!????a???0"J
,gradient_tape/sequential_33/dense_100/MatMulMatMulc??¦y??!???B?V??0"<
sequential_33/dense_101/MatMulMatMul?3??J??!?4?????0"J
.gradient_tape/sequential_33/dense_101/MatMul_1MatMul#"-??і?!???H??"J
.gradient_tape/sequential_33/dense_100/MatMul_1MatMul?R?iT??!$?'????"J
,gradient_tape/sequential_33/dense_101/MatMulMatMulU??]?2??!	??"???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qF'??^?Q@y7T??m???"?
both?Your program is POTENTIALLY input-bound because 91.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 