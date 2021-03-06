?	}\*?a@@}\*?a@@!}\*?a@@	]?????]?????!]?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6}\*?a@@x|{נ?=@1˿?W?7??APn??????I???=??Yڭe2???*	!?rh?}^@2U
Iterator::Model::ParallelMapV2???!???!????RB@)???!???1????RB@:Preprocessing2F
Iterator::Modelqu ?]???!=E?O?N@)???~31??1?????_7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???C???!??d??6@)?_?EЖ?1??3/D2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???b('??!Ǥ???$@)???z?1?r??PW@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicek-?B;?y?!??Ets?@)k-?B;?y?1??Ets?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+e?Xw?!T?????@)?+e?Xw?1T?????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip,?????!úX?e?C@)2??Y?s?1A?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?v/??Q??!mX?f"*@)?T?-??i?1??? ?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9]?????I???q?DX@QɅ?=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	x|{נ?=@x|{נ?=@!x|{נ?=@      ??!       "	˿?W?7??˿?W?7??!˿?W?7??*      ??!       2	Pn??????Pn??????!Pn??????:	???=?????=??!???=??B      ??!       J	ڭe2???ڭe2???!ڭe2???R      ??!       Z	ڭe2???ڭe2???!ڭe2???b      ??!       JGPUY]?????b q???q?DX@yɅ?=@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????w???!????w???"=
 sequential_116/dense_350/SoftmaxSoftmax??w#???!M???}??"=
sequential_116/dense_348/MatMulMatMul??%????!I?-?=??0"=
sequential_116/dense_349/MatMulMatMul?|cx???!??J/???0"K
/gradient_tape/sequential_116/dense_350/MatMul_1MatMulr?3??+??!?6q)???"K
-gradient_tape/sequential_116/dense_348/MatMulMatMul?j?
????!??*jO??0"K
-gradient_tape/sequential_116/dense_349/MatMulMatMul???????!??a&???0"-
IteratorGetNext/_1_Send???f?֐?!?&,h????"L
2sequential_116/batch_normalization_56/moments/meanMeanA2j?A??!?J??????"=
sequential_116/dense_350/MatMulMatMulz	4?!??!z??????0Q      Y@Y??(??(.@a?뺮?:U@q???4??M@y=5????"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?59.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 