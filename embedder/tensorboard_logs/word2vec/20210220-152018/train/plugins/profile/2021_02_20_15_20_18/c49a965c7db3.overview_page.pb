?	zPP?Vf=@zPP?Vf=@!zPP?Vf=@	???G??????G???!???G???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6zPP?Vf=@???^z;@1j????g??A?N^???I??o'??Y3܀?#??*	V-??w\@2U
Iterator::Model::ParallelMapV2??};???!?	? ]<@)??};???1?	? ]<@:Preprocessing2F
Iterator::Model$ӡ??n??!"|???bH@)?:?p˗?1??+?"h4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?Uס????!'?<%?8@)+TT?J??1??????3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?`"ĕ?!????Ī2@)X?\T??1$?;?(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??????~?!???^u@)??????~?1???^u@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip<?l?ޭ?!ރen?I@)??????y?1e?d~?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorG6uu?!?????@)G6uu?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapU???*Ø?!??V?<5@)%??ID?g?1??§??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???G???IA?+?AX@Q?ZU????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???^z;@???^z;@!???^z;@      ??!       "	j????g??j????g??!j????g??*      ??!       2	?N^????N^???!?N^???:	??o'????o'??!??o'??B      ??!       J	3܀?#??3܀?#??!3܀?#??R      ??!       Z	3܀?#??3܀?#??!3܀?#??b      ??!       JGPUY???G???b qA?+?AX@y?ZU?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??1??%??!??1??%??"=
sequential_153/dense_459/MatMulMatMul?$M?׊??!?rbr'$??0"=
sequential_153/dense_460/MatMulMatMul?&??nȞ?! ?Z???0"=
 sequential_153/dense_461/SoftmaxSoftmax?y$?ڜ?!???\???"K
-gradient_tape/sequential_153/dense_459/MatMulMatMul*?>??!AW? ?_??0"=
sequential_153/dense_461/MatMulMatMulig?0?ڗ?!?M퓚???0"K
-gradient_tape/sequential_153/dense_460/MatMulMatMul%xY.N~??!:??vU??0"K
/gradient_tape/sequential_153/dense_461/MatMul_1MatMul??{?@"??!G??????"K
/gradient_tape/sequential_153/dense_460/MatMul_1MatMul958?
???!?%?'??"b
?sequential_153/dropout_153/dropout/random_uniform/RandomUniformRandomUniformk;?i?F??!RiL?K??Q      Y@Y[ZZZZZ6@ajiiiiiS@q$g]?N2A@yvGoAԠ??"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?34.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 