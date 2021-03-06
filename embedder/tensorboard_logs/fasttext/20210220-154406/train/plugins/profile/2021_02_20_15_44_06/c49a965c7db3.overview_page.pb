?	?M?¥C@?M?¥C@!?M?¥C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?M?¥C@?B=}TB@1<K?Pa??Ai??I??I??Rx?,??*	_?I`@2U
Iterator::Model::ParallelMapV2eM.????!???Z??<@)eM.????1???Z??<@:Preprocessing2F
Iterator::Model??҇.???!(??xpH@)?Z??Ι?1iv????3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??h>???!?d??}?7@)?????Õ?1H>??0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??^)??!A?`??4@)0b? ????1???gm0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice'/2?F??!?yA??@)'/2?F??1?yA??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?kЗ????!?NG???I@)a??+ey?1?}
;?W@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???uR_v?!????"
@)???uR_v?1????"
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?fh<??!(???LA:@)[?? ??l?1I?*?y?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?{???X@Q?<a???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?B=}TB@?B=}TB@!?B=}TB@      ??!       "	<K?Pa??<K?Pa??!<K?Pa??*      ??!       2	i??I??i??I??!i??I??:	??Rx?,????Rx?,??!??Rx?,??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?{???X@y?<a????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?6???!?6???"=
sequential_229/dense_687/MatMulMatMul?????W??!pz???0"=
 sequential_229/dense_689/SoftmaxSoftmax??U??!?M4?i??"=
sequential_229/dense_688/MatMulMatMul?p +U??!?5[?b??0"K
-gradient_tape/sequential_229/dense_688/MatMulMatMul?Jmi???!߈?vw??0"K
-gradient_tape/sequential_229/dense_687/MatMulMatMul?Ϛ\Ɛ?!~?XH??0"=
sequential_229/dense_689/MatMulMatMulM.[ ???!??@^\P??0"K
/gradient_tape/sequential_229/dense_689/MatMul_1MatMul=?F??x??!'hE9?W??"K
/gradient_tape/sequential_229/dense_688/MatMul_1MatMul?NR[]??!????J??"K
-gradient_tape/sequential_229/dense_689/MatMulMatMul???????!;v??'??0Q      Y@Y??(??(.@a?뺮?:U@qo???Q@yۍy?????"?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 