?	Ǜ??D@Ǜ??D@!Ǜ??D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Ǜ??D@??QѢB@1t_?l???A[{??B??Iٗl<?b @*	V-??Y@2U
Iterator::Model::ParallelMapV2zo???!R??ð?A@)zo???1R??ð?A@:Preprocessing2F
Iterator::Model???_???!?P?֒?L@)??n????1A?Z%??6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?? %̔?!???)?54@)???,????1??3ht0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateY???tw??!?T?q?,@)??ң?~?1bJHU??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice*?n?EE|?!?ma??x@)*?n?EE|?1?ma??x@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip>{.S????!?o)mBE@)*T7?s?16???K@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?@gҦ?n?!? ?](@)?@gҦ?n?1? ?](@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??n?!???!??4r|1@)???<j?1??QP?V	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??κ!?X@Q5LL????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??QѢB@??QѢB@!??QѢB@      ??!       "	t_?l???t_?l???!t_?l???*      ??!       2	[{??B??[{??B??![{??B??:	ٗl<?b @ٗl<?b @!ٗl<?b @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??κ!?X@y5LL?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??B?$???!??B?$???"=
sequential_180/dense_540/MatMulMatMul????8??!?م?????0"=
sequential_180/dense_541/MatMulMatMul,ꨞ*??!??l?g??0"=
 sequential_180/dense_542/SoftmaxSoftmaxV﫝N'??!??X@}??"K
-gradient_tape/sequential_180/dense_541/MatMulMatMul:m?[*??!>ʋ?N??0"K
/gradient_tape/sequential_180/dense_542/MatMul_1MatMul?˲k????!X0??]6??"=
sequential_180/dense_542/MatMulMatMul?Xm???!h/?DE??0"K
/gradient_tape/sequential_180/dense_541/MatMul_1MatMulS??????!?Y?r`Q??"K
-gradient_tape/sequential_180/dense_540/MatMulMatMul?
?$V??!<?ՅQ??0"b
?sequential_180/dropout_180/dropout/random_uniform/RandomUniformRandomUniform?M??%??!?XYô2??Q      Y@Y??(??(.@a?뺮?:U@q?_?:?S@yT?p?????"?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 